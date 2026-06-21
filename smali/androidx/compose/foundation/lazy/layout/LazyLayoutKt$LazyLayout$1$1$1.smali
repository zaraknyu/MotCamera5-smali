.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $executor:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

.field public final synthetic $itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

.field public final synthetic $prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final synthetic $subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$executor:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$executor:Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    invoke-direct {p1, v2, v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$1$1$1;->$prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/core/view/MenuHostHelper;

    new-instance p1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
