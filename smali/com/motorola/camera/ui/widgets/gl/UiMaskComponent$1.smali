.class public final Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    return-void
.end method


# virtual methods
.method public final onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;)V
    .locals 2

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mExtraJson:Ljava/lang/String;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/utility/PostViewJsonData;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/PostViewJsonData;->isPostViewFrameFirstData()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:Ljava/lang/Object;

    check-cast p1, Ljava/nio/Buffer;

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0, p2}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
