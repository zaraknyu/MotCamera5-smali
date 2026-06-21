.class public final Lcom/motorola/camera/mcf/Mcf$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$arg1:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$10;->val$arg1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for notify event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$10;->val$arg1:I

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->-$$Nest$smtoEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    :try_start_0
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->-$$Nest$mpostCallbackWithListener(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postNotifyEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
