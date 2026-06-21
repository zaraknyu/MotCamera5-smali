.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
