.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$otherComponentsVisibilityListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    return-void
.end method


# virtual methods
.method public final onVisibilityChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->isOtherComponentVisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->hide()V

    return-void

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x19

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->submitTask(Ljava/lang/Runnable;)V

    return-void
.end method
