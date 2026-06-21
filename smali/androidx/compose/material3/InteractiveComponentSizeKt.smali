.class public abstract Landroidx/compose/material3/InteractiveComponentSizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$4:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Landroidx/compose/material3/ShapesKt$LocalShapes$1;->INSTANCE$5:Landroidx/compose/material3/ShapesKt$LocalShapes$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
