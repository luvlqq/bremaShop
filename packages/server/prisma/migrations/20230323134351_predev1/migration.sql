-- CreateTable
CREATE TABLE "UserModel" (
    "id" SERIAL NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "UserModel_id_key" ON "UserModel"("id");
