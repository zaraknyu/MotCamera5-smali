.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p2, Landroid/view/MotionEvent;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
