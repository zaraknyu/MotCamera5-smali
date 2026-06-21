.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 p1, 0x1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent;->TAG:Ljava/lang/String;

    return p1

    :pswitch_0
    sget p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    const/4 p0, 0x0

    return p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mInflationStates:Ljava/util/ArrayList;

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
