.class public abstract Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method
