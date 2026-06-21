.class public final synthetic Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoder;


# static fields
.field public static final instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;

.field public static final instance$1:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;-><init>(I)V

    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;->instance:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;-><init>(I)V

    sput-object v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;->instance$1:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/encoders/ValueEncoderContext;

    sget-object p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder;

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/ValueEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
