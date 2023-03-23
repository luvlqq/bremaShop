/*
  Warnings:

  - You are about to drop the column `productID` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the `UserModel` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `rewiewProductID` to the `Review` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Review" DROP CONSTRAINT "Review_productID_fkey";

-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "categoryID" INTEGER;

-- AlterTable
ALTER TABLE "Review" DROP COLUMN "productID",
ADD COLUMN     "rewiewProductID" INTEGER NOT NULL;

-- DropTable
DROP TABLE "UserModel";

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "userName" TEXT NOT NULL,
    "userEmail" TEXT NOT NULL,
    "userHashPassword" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "userShopHistory" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "purchasedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "userShopHistory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ProductCategory" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "ProductCategory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_ProductTouserShopHistory" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_id_key" ON "User"("id");

-- CreateIndex
CREATE UNIQUE INDEX "_ProductTouserShopHistory_AB_unique" ON "_ProductTouserShopHistory"("A", "B");

-- CreateIndex
CREATE INDEX "_ProductTouserShopHistory_B_index" ON "_ProductTouserShopHistory"("B");

-- AddForeignKey
ALTER TABLE "userShopHistory" ADD CONSTRAINT "userShopHistory_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_categoryID_fkey" FOREIGN KEY ("categoryID") REFERENCES "ProductCategory"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_rewiewProductID_fkey" FOREIGN KEY ("rewiewProductID") REFERENCES "Product"("productID") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductTouserShopHistory" ADD CONSTRAINT "_ProductTouserShopHistory_A_fkey" FOREIGN KEY ("A") REFERENCES "Product"("productID") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductTouserShopHistory" ADD CONSTRAINT "_ProductTouserShopHistory_B_fkey" FOREIGN KEY ("B") REFERENCES "userShopHistory"("id") ON DELETE CASCADE ON UPDATE CASCADE;
