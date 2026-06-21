.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget p0, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/Camera;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/Camera;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
