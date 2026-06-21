.class public final Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    sput-object v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;->INSTANCE:Landroidx/compose/runtime/ComputedProvidableCompositionLocal$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    const-string p0, "Unexpected call to default provider"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
