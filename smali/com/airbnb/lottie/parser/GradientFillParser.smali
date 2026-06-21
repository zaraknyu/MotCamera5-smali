.class public abstract Lcom/airbnb/lottie/parser/GradientFillParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GRADIENT_NAMES:Lcom/tinder/StateMachine;

.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string/jumbo v6, "r"

    const-string v7, "hd"

    const-string v0, "nm"

    const-string v1, "g"

    const-string v2, "o"

    const-string/jumbo v3, "t"

    const-string/jumbo v4, "s"

    const-string v5, "e"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->NAMES:Lcom/tinder/StateMachine;

    const-string v0, "p"

    const-string v1, "k"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientFillParser;->GRADIENT_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method
