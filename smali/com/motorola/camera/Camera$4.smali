.class public final Lcom/motorola/camera/Camera$4;
.super Lcom/motorola/camera/utility/ColorUtil;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/Camera;

.field public final synthetic val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/Camera$4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$4;->this$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$4;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 2

    iget p0, p0, Lcom/motorola/camera/Camera$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->KEYGUARD_DISMISS_CANCELLED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDismissError()V
    .locals 2

    iget p0, p0, Lcom/motorola/camera/Camera$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->KEYGUARD_DISMISS_FAILED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDismissSucceeded()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/Camera$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/Camera$4;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v1, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/Camera$4;->this$0:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/Camera$4;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v1, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    iget-object v0, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/Camera$4;->this$0:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
