import { Controller, Get, Post, Delete } from '@nestjs/common';
import { CartService } from './cart.service';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('Cart')
@Controller('cart')
export class CartController {
  constructor(private readonly cartService: CartService) {}

  @Get()
  getAllCartItem() {
    return 'get all item';
  }

  @Post()
  addItemToCart() {
    return 'add items to cart';
  }

  @Get()
  updateCartItems() {
    return 'update items';
  }

  @Delete()
  DeleteCartItems() {
    return ' deleted cart items';
  }
}
