let stocks = {
    fruits : ["apple", "banana", "cherry"],
    liquid : ["water", "juice", "soda"],
    holder : ["cone", "cup", "bowl"],
    topping : ["sugar", "whipped cream", "chocolate sauce"]
};

// Order Production 

let order = (fruit_name, call_production) => {
    setTimeout(()=>{
        console.log(`${stocks.fruits[fruit_name]} has been selected`);
        call_production();
    }, 2000);

};

let production = () => {
    setTimeout(()=>{
        console.log("Production has started");

        setTimeout(()=>{
            console.log("The fruits have been choped");

            setTimeout(()=>{
                console.log(`${stocks.liquid[1]} have been selected`);

                setTimeout(()=>{
                    console.log(`The icecream are being added to the ${stocks.holder[1]}`);

                    setTimeout(()=>{
                        console.log(`${stocks.topping[2]} and ${stocks.topping[1]} toppings have been selected`);

                        setTimeout(()=>{
                            console.log("Serve the Icecream");
                        },2000);
                    },3000);
                },1000);
            },1000);
        },2000);
    },0);
};

order(0, production);