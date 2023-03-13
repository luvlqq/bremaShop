import { Injectable } from '@nestjs/common';
import {} from './dto/auth.dto'

@Injectable()
export class AuthService {

  login(){
    return 'test login'
  }

  register(){
    return 'register test'
  }
}
