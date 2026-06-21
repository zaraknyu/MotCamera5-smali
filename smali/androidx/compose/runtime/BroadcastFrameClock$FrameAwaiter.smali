.class public final Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final onFrame:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->onFrame:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method
