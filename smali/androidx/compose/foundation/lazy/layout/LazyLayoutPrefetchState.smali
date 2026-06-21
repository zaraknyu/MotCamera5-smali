.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final onNestedPrefetch:Lkotlin/jvm/internal/Lambda;

.field public prefetchHandleProvider:Landroidx/core/view/MenuHostHelper;

.field public final prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->onNestedPrefetch:Lkotlin/jvm/internal/Lambda;

    new-instance p1, Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

    return-void
.end method


# virtual methods
.method public final schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 6

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/core/view/MenuHostHelper;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    iget-object v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/core/view/MenuHostHelper;IJLandroidx/media3/extractor/text/pgs/PgsParser;)V

    iget-object p0, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;->schedulePrefetch(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;)V

    return-object v0

    :cond_0
    sget-object p0, Landroidx/compose/foundation/lazy/layout/DummyHandle;->INSTANCE:Landroidx/compose/foundation/lazy/layout/DummyHandle;

    return-object p0
.end method
