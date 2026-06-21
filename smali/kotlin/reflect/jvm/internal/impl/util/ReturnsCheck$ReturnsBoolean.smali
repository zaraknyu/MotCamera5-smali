.class public final Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;
.super Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    const-string v1, "Boolean"

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$6:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsBoolean;

    return-void
.end method
