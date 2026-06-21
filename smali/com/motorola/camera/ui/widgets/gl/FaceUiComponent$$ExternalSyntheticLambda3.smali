.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->shouldShowTip()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(IZ)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mShouldKeepHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->setTipVisibility(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->clearFaces()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
