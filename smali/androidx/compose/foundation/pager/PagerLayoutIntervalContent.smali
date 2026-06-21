.class public final Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;
.super Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.source "SourceFile"


# instance fields
.field public final intervals:Lcom/google/common/base/Splitter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Splitter;-><init>(IB)V

    new-instance v1, Landroidx/compose/foundation/pager/PagerIntervalContent;

    invoke-direct {v1, p2, p1}, Landroidx/compose/foundation/pager/PagerIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    invoke-virtual {v0, p3, v1}, Lcom/google/common/base/Splitter;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    return-void
.end method


# virtual methods
.method public final getIntervals$1()Lcom/google/common/base/Splitter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    return-object p0
.end method
