-- CreateTable
CREATE TABLE "ProductModel" (
    "productID" SERIAL NOT NULL,
    "productName" TEXT NOT NULL,
    "productPrice" INTEGER NOT NULL,
    "productDescription" TEXT NOT NULL,
    "productRating" INTEGER NOT NULL,

    CONSTRAINT "ProductModel_pkey" PRIMARY KEY ("productID")
);

-- CreateTable
CREATE TABLE "ReviewModel" (
    "id" SERIAL NOT NULL,
    "reviewText" TEXT NOT NULL,
    "reviewRating" INTEGER NOT NULL,
    "productID" INTEGER,

    CONSTRAINT "ReviewModel_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ProductModel_productID_key" ON "ProductModel"("productID");

-- AddForeignKey
ALTER TABLE "ReviewModel" ADD CONSTRAINT "ReviewModel_productID_fkey" FOREIGN KEY ("productID") REFERENCES "ProductModel"("productID") ON DELETE SET NULL ON UPDATE CASCADE;
