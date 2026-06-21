.class public final Lcom/airbnb/lottie/parser/DropShadowEffectParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DROP_SHADOW_EFFECT_NAMES:Lcom/tinder/StateMachine;

.field public static final INNER_EFFECT_NAMES:Lcom/tinder/StateMachine;


# instance fields
.field public color:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

.field public direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/tinder/StateMachine;

    const-string v0, "nm"

    const-string/jumbo v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method
