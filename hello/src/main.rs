use anyhow::Result;

use keyvalue::*;
wit_bindgen_rust::import!("wit/keyvalue_v0.1.0/keyvalue.wit");
wit_error_rs::impl_error!(keyvalue::KeyvalueError);

fn main() -> Result<()> {
    println!("hello world!!");
    // let my_kv = keyvalue::Keyvalue::open("my_folder")?;
    // my_kv.set("hello-spiderlightning", b"Hello, SpiderLightning!")?;
    // println!(
    //     "{}",
    //     std::str::from_utf8(&my_kv.get("hello-spiderlightning")?)?,
    // );

    Ok(())
}
