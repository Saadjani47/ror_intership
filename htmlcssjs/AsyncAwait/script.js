let stocks = {
    fruits : ["apple", "banana", "cherry"],
    liquid : ["water", "juice", "soda"],
    holder : ["cone", "cup", "bowl"],
    topping : ["sugar", "whipped cream", "chocolate sauce"]
};

let is_shop_open = true;

function time(ms){
    return new Promise ((resolve, reject) => {
        if(is_shop_open){
            setTimeout(resolve, ms);
        }
        else{
            reject(console.log("Sorry, shop is closed"));
        }
    });
}

async function kitchen(){
    try{
        await time(2000)
        console.log(`${stocks.fruits[0]} was selected`)
        await time(2000)
        console.log("Start the production")
        await time(2000)
        console.log(`${stocks.liquid[0]} and ${stocks.liquid[1]} was selected`)
        await time(2000)
        console.log("Machine has been started")
        await time(2000)
        console.log(`${stocks.holder[0]} was selected`)
        await time(2000)
        console.log(`${stocks.topping[1]} and ${stocks.topping[2]} was selected`)
        await time(2000)
        console.log("Production has been completed")
    }    
    catch(error){
        console.log("Customer left", error)
    }
    finally{
        console.log("Day ended, Shop closed")
    }
}

kitchen();