.class public final synthetic Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lkotlinx/serialization/json/JsonConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 7

    iget-object v0, p1, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrintIndent:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroidx/media3/decoder/Buffer;

    const-string p1, "callback"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v2, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    const/4 v5, 0x1

    move v6, v5

    invoke-direct/range {v1 .. v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/decoder/Buffer;ZZ)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
