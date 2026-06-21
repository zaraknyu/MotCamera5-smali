.class public final Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $composition:Lcom/airbnb/lottie/LottieComposition;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $progress:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;III)V
    .locals 0

    iput p6, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$progress:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed:I

    iput p5, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v5

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed1:I

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$progress:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$modifier:Landroidx/compose/ui/Modifier;

    invoke-static/range {v1 .. v6}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v4

    iget p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$$changed1:I

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v5

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$progress:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;->$modifier:Landroidx/compose/ui/Modifier;

    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
