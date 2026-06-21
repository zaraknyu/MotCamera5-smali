.class public final Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.source "SourceFile"


# instance fields
.field public hasCustomSpans:Z

.field public final intervals:Lcom/google/common/base/Splitter;

.field public final spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Splitter;-><init>(IB)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getIntervals$1()Lcom/google/common/base/Splitter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    return-object p0
.end method
