.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final _requests:Ljava/util/ArrayList;

.field public final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final schedulePrefetch(I)V
    .locals 6

    sget-wide v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->ZeroConstraints:J

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/core/view/MenuHostHelper;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchMetrics:Landroidx/media3/extractor/text/pgs/PgsParser;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/core/view/MenuHostHelper;IJLandroidx/media3/extractor/text/pgs/PgsParser;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$NestedPrefetchScopeImpl;->_requests:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
