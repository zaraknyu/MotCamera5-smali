.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->f$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->f$0:Lcom/motorola/camera/Controller;

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda15;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    const-string v0, "https://help.motorola.com/hc/apps/camera/index.php?m=&v=10004724&t=help_hardware_error"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda28;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
