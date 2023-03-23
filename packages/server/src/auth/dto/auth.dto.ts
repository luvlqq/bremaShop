import {
  IsNotEmpty,
  IsString,
  Matches,
  MaxLength,
  Min,
  MinLength,
} from 'class-validator';
import {
  IS_NOT_EMPTY,
  IS_STRING,
  MATCHES,
  MAX_LOGIN,
  MAX_PASS,
  MIN_LOGIN,
  MIN_PASS,
} from './dto.helper';

export class AuthDto {
  @IsString({ message: IS_STRING })
  @IsNotEmpty({ message: IS_NOT_EMPTY })
  @MaxLength(20, { message: MAX_LOGIN })
  @MinLength(4, { message: MIN_LOGIN })
  login: string;
  @IsString({ message: IS_STRING })
  @IsNotEmpty({ message: IS_NOT_EMPTY })
  @MinLength(8, { message: MIN_PASS })
  @MaxLength(32, { message: MAX_PASS })
  @Matches('^[0-9a-zA-Z!@#$]+$', undefined, { message: MATCHES })
  password: string;
}
