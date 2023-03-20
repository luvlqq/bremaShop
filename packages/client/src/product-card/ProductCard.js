import "./ProductCard.css";
import Header from "../components/Header";
import Footer from "../components/Footer";

const ProductCard=(props)=>{
return(
    <div className="product_card">
        <div className="product_card_content">
            <img src="/img/ziphoodie.jpg" alt="Photo will be soon..."></img>
            <div className="product_card_contentexp">
                <h2>Зип-худи Stone Island</h2>
                <h3>200$</h3>
                <p>Удобные и качественные вещи из хлопка мертвого тюленя.</p>
                <div className="product_card_btns_size">
                    <button>S</button>
                    <button>M</button>
                    <button>L</button>
                    <button>XL</button>
                    </div>
                    <div className="product_card_btns_cart">
                    <button>in cart</button>
                    </div>
            </div>
        </div>

    </div>
);
}

export default ProductCard;