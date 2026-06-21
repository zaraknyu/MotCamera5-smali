.class public abstract Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE$1:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->LocalSaveableStateRegistry:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method
