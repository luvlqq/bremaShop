import "./AlsoLike.css";
import Card from '../components/Card';

const AlsoLike=()=>{
    return (
        <div className="alsolike">
            <div className="alsolike_text">you may also like</div>
            <div className="alsolike_items">
            <Card/>
            <Card/>
            <Card/>
            <Card/>
            </div>
        </div>
    );
}

export default AlsoLike;