.class public final synthetic Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic f$1:Lkotlinx/coroutines/TimeoutCoroutine;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Lkotlinx/coroutines/TimeoutCoroutine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/TimeoutCoroutine;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/TimeoutCoroutine;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
