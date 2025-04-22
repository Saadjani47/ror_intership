let stocks = {
    fruits : ["apple", "banana", "cherry"],
    liquid : ["water", "juice", "soda"],
    holder : ["cone", "cup", "bowl"],
    topping : ["sugar", "whipped cream", "chocolate sauce"]
};

let shop_is_open = true;

let order = (time, work)=>{
    return new Promise((resolve, reject)=>{
        if(shop_is_open){
            setTimeout(() => {
                resolve(work());
            }, time);
        }
        else{
            reject("Sorry, shop is closed!");
        }
    });
};

order(2000, ()=>console.log(`${stocks.fruits[0]} was selected`))

.then(()=>{
    return order(2000,()=>console.log(`${stocks.liquid[0]} and ${stocks.liquid[1]} was selected`))
})

.then(()=>{
    return order(2000,()=> console.log("Machine has been started"))
})


.then(()=>{
    return order(2000,()=> console.log(`${stocks.holder[1]} was selected`))
})

.then(()=>{
    return order(2000,()=> console.log(`${stocks.topping[1]} and ${stocks.topping[2]} was selected`))
})

.then(()=>{
    console.log("Order have been serverd");
})

.catch(()=>{
    console.log("Sorry, shop is closed");
})

.finally(()=>{
    console.log("Thank you for visiting");
})

