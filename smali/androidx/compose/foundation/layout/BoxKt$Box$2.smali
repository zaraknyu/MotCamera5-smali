.class public final Landroidx/compose/foundation/layout/BoxKt$Box$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$r8$classId:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$modifier:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    iget-object p2, p2, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->intervalContent:Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object p2

    iget p0, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$$changed:I

    invoke-virtual {p2, p0}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p2

    iget v0, p2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int/2addr p0, v0

    iget-object p2, p2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    check-cast p2, Landroidx/compose/foundation/pager/PagerIntervalContent;

    iget-object p2, p2, Landroidx/compose/foundation/pager/PagerIntervalContent;->item:Lkotlin/jvm/functions/Function4;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/pager/PagerScopeImpl;->INSTANCE:Landroidx/compose/foundation/pager/PagerScopeImpl;

    invoke-interface {p2, v1, p0, p1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iget-object p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-object p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    iget p0, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$$changed:I

    invoke-virtual {p2, p0}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object p2

    iget v0, p2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int/2addr p0, v0

    iget-object p2, p2, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    iget-object p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    invoke-virtual {p2, v1, p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v0, p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/google/common/base/Splitter;

    iget p0, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$$changed:I

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    move-result-object v0

    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    sub-int/2addr p0, v1

    iget-object v0, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListInterval;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListInterval;->item:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object p2, p2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, p0, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$modifier:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/Modifier;

    iget p0, p0, Landroidx/compose/foundation/layout/BoxKt$Box$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, p1, p0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
