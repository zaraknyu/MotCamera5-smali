.class public final Lcom/motorola/camera/Camera$5;
.super Lcom/motorola/camera/utility/ColorUtil;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/Camera$5;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Camera$5;->this$0:Lcom/motorola/camera/Camera;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchMicrosoftCopilot()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
