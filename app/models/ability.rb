# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user) #這個 user 其實就是 devise 提供的 current_user
    if user.has_role?(:user) # 使用者是會員
      can :manage, Reserve #無法執行  Controller 裡的 new 和 create action
      # can :manage,  Reserve   #可以執行 Controller 裡的  action
      # basic_read_only #呼叫基本權限設定 Medthod
    elsif user.has_role?(:admin) #如果 role 為 admin
      can :manage, :all #可管理所有資源
    end
  end

  # protected

  # def basic_read_only
  #   can :read, Forum
  # end

  #:manage: 是指這個 controller 內所有的 action
  #:read :  指 :index 和 :show
  #:update: 指 :edit  和 :update
  #:destroy:指 :destroy
  #:create: 指 :new   和 :crate
end
