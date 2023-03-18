import "./SpecificationCard.css";

const SpecificationCard=(props)=>{
    return(
        <div className="specification__card">
            <div className="container">
            <img src={props.imgUrl} alt="Women"></img>
            <button>{props.title}</button>
            </div>
        </div>
    )
}

export default SpecificationCard;