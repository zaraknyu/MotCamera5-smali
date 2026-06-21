.class public abstract Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANIMATABLE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

.field public static final ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

.field public static final PROPERTIES_NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "a"

    const-string/jumbo v1, "s"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    const-string/jumbo v0, "r"

    const-string v2, "e"

    const-string v3, "o"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    const-string/jumbo v0, "sw"

    const-string/jumbo v1, "t"

    const-string v2, "fc"

    const-string/jumbo v4, "sc"

    filled-new-array {v2, v4, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method
