import "./Header.css";

const Header=()=>{
    return(
    <div className="header">
    <h2>Brema</h2>
    <div className="header__image">
        <img src="/img/shopnow.jpg" alt="Shop-now" />
        <button>shop now</button>
    </div>
    </div>
    )
}

export default Header;