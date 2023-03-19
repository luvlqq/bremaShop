import {NestFactory} from '@nestjs/core';
import {AppModule} from './app.module';
import {DocumentBuilder, SwaggerModule} from "@nestjs/swagger";

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // Swagger
  const config = new DocumentBuilder()
    .setTitle('Brema Shop')
    .setDescription('Brema shop API')
    .setVersion('0.1')
    .build()
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('apidoc', app, document);

  app.enableCors();
  app.setGlobalPrefix('api');
  await app.listen(3000);
}

bootstrap();
