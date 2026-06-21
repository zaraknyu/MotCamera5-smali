.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $compositeKeyHash:I

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $factory:Lkotlin/jvm/functions/Function1;

.field public final synthetic $ownerView:Landroid/view/View;

.field public final synthetic $parentReference:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

.field public final synthetic $stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$factory:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$parentReference:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    iput-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$compositeKeyHash:I

    iput-object p6, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$ownerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.node.Owner"

    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$ownerView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/node/Owner;

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$factory:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$parentReference:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    iget-object v4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget v5, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1$1;->$compositeKeyHash:I

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;ILandroidx/compose/ui/node/Owner;)V

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    return-object p0
.end method
