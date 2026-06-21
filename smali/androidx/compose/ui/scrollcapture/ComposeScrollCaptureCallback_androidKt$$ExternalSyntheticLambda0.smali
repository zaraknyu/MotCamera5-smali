.class public final synthetic Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/StandaloneCoroutine;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/StandaloneCoroutine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
