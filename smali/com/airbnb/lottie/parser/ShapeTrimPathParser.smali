.class public abstract Lcom/airbnb/lottie/parser/ShapeTrimPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "m"

    const-string v5, "hd"

    const-string/jumbo v0, "s"

    const-string v1, "e"

    const-string v2, "o"

    const-string v3, "nm"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->NAMES:Lcom/tinder/StateMachine;

    return-void
.end method
