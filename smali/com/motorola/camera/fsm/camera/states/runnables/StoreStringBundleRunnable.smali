.class public Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mConstant:Ljava/lang/String;

.field public final mValue:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mConstant:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mValue:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mConstant:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mValue:Ljava/io/Serializable;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mValue:Ljava/io/Serializable;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->mConstant:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
