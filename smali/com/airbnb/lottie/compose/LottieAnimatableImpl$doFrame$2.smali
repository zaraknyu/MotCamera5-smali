.class public final Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $iterations:I

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;II)V
    .locals 0

    iput p3, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->$iterations:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->$iterations:I

    invoke-static {p1, p0, v0, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->access$onFrame(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->this$0:Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimatableImpl$doFrame$2;->$iterations:I

    invoke-static {p1, p0, v0, v1}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;->access$onFrame(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;IJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
