class SessionsController < ApplicationController
  def new
  end

  def create
    # เพิ่มโค้ดตรวจสอบการเข้าสู่ระบบ เช่น:
    if params[:login] == "admin" && params[:password] == "password"
      redirect_to root_path, notice: "Login successful"
    else
      flash.now[:alert] = "Invalid login or password"
      render :new
    end
  end

  def destroy
    # เพิ่มโค้ด Logout
    redirect_to login_path, notice: "Logged out successfully"
  end
end
