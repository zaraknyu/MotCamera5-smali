.class public final Lcom/google/android/gms/common/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    :goto_1
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzn:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-class v2, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xff

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    const/4 v2, -0x2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionForText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zav;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    return-object v0

    :pswitch_2
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_6

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zat;

    goto :goto_1

    :cond_5
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_1

    :cond_6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zai;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    return-object v0

    :pswitch_3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_7
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v3, :cond_9

    move-object v3, v2

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v3, v6

    goto :goto_2

    :cond_a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zag;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/signin/internal/zag;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_4
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_d

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_b
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_3

    :cond_c
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_3

    :cond_d
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_3

    :cond_e
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zaa;

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/signin/internal/zaa;-><init>(IILandroid/content/Intent;)V

    return-object v0

    :pswitch_5
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_12

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_11

    const/4 v8, 0x2

    if-eq v7, v8, :cond_10

    const/4 v8, 0x3

    if-eq v7, v8, :cond_f

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_f
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_4

    :cond_10
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_4

    :cond_11
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/Feature;

    invoke-direct {v0, v5, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    :pswitch_6
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_15

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    const/4 v6, 0x2

    if-eq v5, v6, :cond_13

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_13
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_5

    :cond_14
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_5

    :cond_15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(IZ)V

    return-object v0

    :pswitch_7
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_17

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_16
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    goto :goto_6

    :cond_17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;-><init>(Landroid/app/PendingIntent;)V

    return-object v0

    :pswitch_8
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_1a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_18
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    :cond_19
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_7

    :cond_1a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(IZ)V

    return-object v0

    :pswitch_9
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    move-object v14, v2

    move-object v13, v3

    move-object v11, v4

    move-object v12, v11

    move-object v15, v12

    move-object/from16 v21, v15

    move v8, v5

    move v9, v8

    move v10, v9

    move/from16 v18, v10

    move/from16 v19, v18

    move/from16 v20, v19

    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    :pswitch_a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    :pswitch_c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v20

    goto :goto_8

    :pswitch_d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v19

    goto :goto_8

    :pswitch_e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v18

    goto :goto_8

    :pswitch_f
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Lcom/google/android/gms/common/Feature;

    goto :goto_8

    :pswitch_10
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, [Lcom/google/android/gms/common/Feature;

    goto :goto_8

    :pswitch_11
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/accounts/Account;

    goto :goto_8

    :pswitch_12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_1b

    move-object v14, v4

    goto :goto_8

    :cond_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v14, v5

    goto :goto_8

    :pswitch_13
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_8

    :pswitch_14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v2, :cond_1c

    move-object v12, v4

    goto :goto_8

    :cond_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v12, v5

    goto :goto_8

    :pswitch_15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :pswitch_16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    goto/16 :goto_8

    :pswitch_17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    goto/16 :goto_8

    :pswitch_18
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v8

    goto/16 :goto_8

    :cond_1d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v7, Lcom/google/android/gms/common/internal/GetServiceRequest;

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    return-object v7

    :pswitch_19
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v8, v5

    move-object v10, v8

    move v6, v3

    move v7, v6

    move v9, v7

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_20

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1a
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_1e

    move-object v10, v2

    goto :goto_9

    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9

    :pswitch_1b
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_9

    :pswitch_1c
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_1f

    move-object v8, v2

    goto :goto_9

    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9

    :pswitch_1d
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_9

    :pswitch_1e
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_9

    :pswitch_1f
    sget-object v4, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    goto :goto_9

    :cond_20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;-><init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V

    return-object v4

    :pswitch_20
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_26

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_24

    const/4 v9, 0x2

    if-eq v8, v9, :cond_23

    const/4 v9, 0x3

    if-eq v8, v9, :cond_22

    const/4 v9, 0x4

    if-eq v8, v9, :cond_21

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_21
    sget-object v6, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    goto :goto_a

    :cond_22
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_a

    :cond_23
    sget-object v5, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/common/Feature;

    goto :goto_a

    :cond_24
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v4, :cond_25

    move-object v4, v2

    goto :goto_a

    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    add-int/2addr v7, v4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v8

    goto :goto_a

    :cond_26
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/internal/zzk;->zza:Landroid/os/Bundle;

    iput-object v5, v0, Lcom/google/android/gms/common/internal/zzk;->zzb:[Lcom/google/android/gms/common/Feature;

    iput v3, v0, Lcom/google/android/gms/common/internal/zzk;->zzc:I

    iput-object v6, v0, Lcom/google/android/gms/common/internal/zzk;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object v0

    :pswitch_21
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v9, 0x1

    if-eq v3, v9, :cond_2b

    const/4 v9, 0x2

    if-eq v3, v9, :cond_2a

    const/4 v9, 0x3

    if-eq v3, v9, :cond_29

    const/4 v9, 0x4

    if-eq v3, v9, :cond_28

    const/4 v9, 0x5

    if-eq v3, v9, :cond_27

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_b

    :cond_28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_b

    :cond_29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_b

    :cond_2a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_b

    :cond_2b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_b

    :cond_2c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IIIZZ)V

    return-object v3

    :pswitch_22
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move v9, v8

    move-object v6, v3

    move-object v7, v6

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_33

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v4, v2

    const/4 v10, 0x1

    if-eq v4, v10, :cond_32

    const/4 v10, 0x2

    if-eq v4, v10, :cond_30

    const/4 v10, 0x3

    if-eq v4, v10, :cond_2f

    const/4 v10, 0x4

    if-eq v4, v10, :cond_2e

    const/4 v10, 0x5

    if-eq v4, v10, :cond_2d

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_2d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_c

    :cond_2e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_c

    :cond_2f
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_c

    :cond_30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_31

    move-object v6, v3

    goto :goto_c

    :cond_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_c

    :cond_32
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_c

    :cond_33
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/common/internal/zav;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/zav;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    return-object v4

    :pswitch_23
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v2

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_38

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_37

    const/4 v8, 0x2

    if-eq v7, v8, :cond_36

    const/4 v8, 0x3

    if-eq v7, v8, :cond_35

    const/4 v8, 0x4

    if-eq v7, v8, :cond_34

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_34
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_d

    :cond_35
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_d

    :cond_36
    sget-object v2, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    goto :goto_d

    :cond_37
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_d

    :cond_38
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/internal/zat;

    invoke-direct {v0, v4, v2, v5, v3}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_24
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move/from16 v18, v2

    move v8, v3

    move v9, v8

    move v10, v9

    move/from16 v17, v10

    move-object v15, v4

    move-object/from16 v16, v15

    move-wide v11, v5

    move-wide v13, v11

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_39

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v18, v2

    goto :goto_e

    :pswitch_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v17, v2

    goto :goto_e

    :pswitch_27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_e

    :pswitch_28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_e

    :pswitch_29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_e

    :pswitch_2a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_e

    :pswitch_2b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_e

    :pswitch_2c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v2

    goto :goto_e

    :pswitch_2d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v8, v2

    goto :goto_e

    :cond_39
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v7, Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v7

    :pswitch_2e
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3a

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_3a
    sget-object v2, Lcom/google/android/gms/common/internal/MethodInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_f

    :cond_3b
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_f

    :cond_3c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(Ljava/util/List;I)V

    return-object v0

    :pswitch_2f
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_41

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_40

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3e

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3d

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_3d
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_10

    :cond_3e
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_10

    :cond_3f
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_40
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_10

    :cond_41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0

    :pswitch_30
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_44

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_43

    const/4 v6, 0x2

    if-eq v5, v6, :cond_42

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_42
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_43
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_11

    :cond_44
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_31
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-wide v14, v3

    move v7, v5

    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_45

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_32
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_12

    :pswitch_33
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_12

    :pswitch_34
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_12

    :pswitch_35
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_12

    :pswitch_36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v14, v2

    goto :goto_12

    :pswitch_37
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_12

    :pswitch_38
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v12, v2

    goto :goto_12

    :pswitch_39
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_12

    :pswitch_3a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_12

    :pswitch_3b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_12

    :pswitch_3c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_12

    :pswitch_3d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v7, v2

    goto :goto_12

    :cond_45
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :pswitch_3e
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    return-object v0

    :pswitch_3f
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/4 v2, -0x1

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const v2, 0xffffff

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_13

    :cond_46
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-object v0

    :pswitch_40
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    goto :goto_14

    :cond_47
    const/4 v3, 0x0

    :goto_14
    iput-boolean v3, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    return-object v0

    :pswitch_41
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_42
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_43
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_44
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_45
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_46
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v2

    :goto_15
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_4c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4a

    const/4 v8, 0x3

    if-eq v7, v8, :cond_49

    const/4 v8, 0x4

    if-eq v7, v8, :cond_48

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_48
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_49
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    goto :goto_15

    :cond_4a
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_15

    :cond_4b
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_15

    :cond_4c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_19
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/zzb;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/material/badge/BadgeState$State;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zak;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zai;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zag;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zaa;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/common/Feature;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zzk;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zav;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zat;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/common/internal/MethodInvocation;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/common/internal/TelemetryData;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Lcom/google/android/gms/common/ConnectionResult;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
