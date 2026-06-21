.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const p1, 0x7f0800c1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const p1, 0x7f0801d4

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void

    :pswitch_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const p2, 0x7f1203ef

    iput p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const p2, 0x7f1203ee

    iput p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance p2, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-direct {p2, p3, p4}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeComponent$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p2, 0x7f1203f0

    iput p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p2, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/motorola/camera/utility/AppExtensionsKt$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p2, 0x7f1200d1

    iput p2, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p3, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    const/16 p1, 0x10

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
