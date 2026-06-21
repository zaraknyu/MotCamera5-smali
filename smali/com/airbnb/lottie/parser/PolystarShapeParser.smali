.class public abstract Lcom/airbnb/lottie/parser/PolystarShapeParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "hd"

    const-string v10, "d"

    const-string v0, "nm"

    const-string/jumbo v1, "sy"

    const-string/jumbo v2, "pt"

    const-string v3, "p"

    const-string/jumbo v4, "r"

    const-string v5, "or"

    const-string v6, "os"

    const-string v7, "ir"

    const-string v8, "is"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/PolystarShapeParser;->NAMES:Lcom/tinder/StateMachine;

    return-void
.end method
