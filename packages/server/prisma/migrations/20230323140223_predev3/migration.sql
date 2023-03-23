/*
  Warnings:

  - You are about to drop the `ProductModel` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ReviewModel` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ReviewModel" DROP CONSTRAINT "ReviewModel_productID_fkey";

-- DropTable
DROP TABLE "ProductModel";

-- DropTable
DROP TABLE "ReviewModel";

-- CreateTable
CREATE TABLE "Product" (
    "productID" SERIAL NOT NULL,
    "productName" TEXT NOT NULL,
    "productPrice" DOUBLE PRECISION NOT NULL,
    "productDesc" TEXT,
    "productRating" INTEGER NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("productID")
);

-- CreateTable
CREATE TABLE "Review" (
    "id" SERIAL NOT NULL,
    "reviewText" TEXT NOT NULL,
    "reviewRating" INTEGER NOT NULL,
    "productID" INTEGER NOT NULL,

    CONSTRAINT "Review_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_productID_fkey" FOREIGN KEY ("productID") REFERENCES "Product"("productID") ON DELETE RESTRICT ON UPDATE CASCADE;
