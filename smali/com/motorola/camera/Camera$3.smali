.class public final Lcom/motorola/camera/Camera$3;
.super Lcom/motorola/camera/utility/ColorUtil;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;

.field public final synthetic val$finalBundle:Landroid/os/Bundle;

.field public final synthetic val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Camera$3;->this$0:Lcom/motorola/camera/Camera;

    iput-object p2, p0, Lcom/motorola/camera/Camera$3;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iput-object p3, p0, Lcom/motorola/camera/Camera$3;->val$finalBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Camera$3;->val$launch:Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    iget-object v0, v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/camera/Camera$3;->val$finalBundle:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/motorola/camera/Camera$3;->this$0:Lcom/motorola/camera/Camera;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
