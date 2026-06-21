.class public abstract Landroidx/compose/ui/platform/ComposableSingletons$Wrapper_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE$2:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v2, 0x0

    const v3, -0x68ded66e

    invoke-direct {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    sput-object v1, Landroidx/compose/ui/platform/ComposableSingletons$Wrapper_androidKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method
