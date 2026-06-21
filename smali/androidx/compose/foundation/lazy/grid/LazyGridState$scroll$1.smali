.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public L$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public L$1:Landroidx/compose/foundation/MutatePriority;

.field public L$2:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->label:I

    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
