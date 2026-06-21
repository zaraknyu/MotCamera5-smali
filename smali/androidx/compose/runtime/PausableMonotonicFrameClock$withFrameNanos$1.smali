.class public final Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

.field public L$1:Lkotlin/jvm/functions/Function1;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidUiFrameClock;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->this$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    iget-object p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->this$0:Landroidx/compose/ui/platform/AndroidUiFrameClock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/AndroidUiFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
