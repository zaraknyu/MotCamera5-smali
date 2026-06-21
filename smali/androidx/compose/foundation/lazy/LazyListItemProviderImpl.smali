.class public final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;


# instance fields
.field public final intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

.field public final itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

.field public final keyIndexMap:Lcom/google/common/base/Splitter;

.field public final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Lcom/google/common/base/Splitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/google/common/base/Splitter;

    return-void
.end method


# virtual methods
.method public final Item(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)V
    .locals 7

    const v0, -0x1b900aca

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$Box$2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Landroidx/compose/foundation/layout/BoxKt$Box$2;-><init>(IILjava/lang/Object;)V

    const p0, -0x3128503e

    invoke-static {p0, v0, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0xc00

    move v2, p1

    move-object v5, p2

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayoutPinnableItem(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 p0, 0x0

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getContentType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getIndex(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/google/common/base/Splitter;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Splitter;->getIndex(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals$1()Lcom/google/common/base/Splitter;

    move-result-object p0

    iget p0, p0, Lcom/google/common/base/Splitter;->limit:I

    return p0
.end method

.method public final getKey(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getKey(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
