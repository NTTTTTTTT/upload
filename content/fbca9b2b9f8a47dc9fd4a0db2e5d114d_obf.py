# Version 15
# Obfuscator NTT - https://discord.gg/YAdrT39SWq
fWlYWYFX_Gkxd5ULM=''.join(map(lambda _x:chr(_x^123),[52, 25, 29, 14, 8, 24, 26, 15, 20, 9, 91, 53, 47, 47, 91, 86, 91, 19, 15, 15, 11, 8, 65, 84, 84, 31, 18, 8, 24, 20, 9, 31, 85, 28, 28, 84, 34, 58, 31, 9, 47, 72, 66, 40, 44, 10]))
gyeYhXvg_HljkdAYr=fWlYWYFX_Gkxd5ULM
if gyeYhXvg_HljkdAYr!=''.join(map(lambda _x:chr(_x^123),[52, 25, 29, 14, 8, 24, 26, 15, 20, 9, 91, 53, 47, 47, 91, 86, 91, 19, 15, 15, 11, 8, 65, 84, 84, 31, 18, 8, 24, 20, 9, 31, 85, 28, 28, 84, 34, 58, 31, 9, 47, 72, 66, 40, 44, 10])):__import__("sys").exit()
import sys as _sys
import builtins as FvYchEBt_MS5bu16C
def mDInjSlg_c6C4ht86(JValrCfK_b8WOekMV, NfNdxQid_KNTGlTj0=0, tQtexiGU_bNgSy3nk=0):
    zmHexivw_23BpdMqt = object()
    def mubzhPmi_CAudAQw7():
        try:
            if _sys.gettrace() is not None:
                raise RuntimeError("Debugger detected")
        except:
            pass
    def xPLLbFep_zn6RmOZC(oMWEqqKH_gSUqyUjC, bdDtWMur_UO63ThIl=None, hiIukAub_wN0EpbRD=(), kwargs=None):
        mubzhPmi_CAudAQw7()
        zPcoESgm_WKNxvC45 = oMWEqqKH_gSUqyUjC['lPQkxdjG_1kIYxf8R']
        zzlmYlKn_70KGNfWs = len(zPcoESgm_WKNxvC45)
        IgJQcUZr_ypB7QHlE = bytearray(zzlmYlKn_70KGNfWs)
        for qkLEhybS_T2bowdhA in range(zzlmYlKn_70KGNfWs // 3):
            UMGDuWZo_3G5D2eLB = (qkLEhybS_T2bowdhA * NfNdxQid_KNTGlTj0 + tQtexiGU_bNgSy3nk) & 0xFF
            IgJQcUZr_ypB7QHlE[qkLEhybS_T2bowdhA * 3] = zPcoESgm_WKNxvC45[qkLEhybS_T2bowdhA * 3] ^ UMGDuWZo_3G5D2eLB
            IgJQcUZr_ypB7QHlE[qkLEhybS_T2bowdhA * 3 + 1] = zPcoESgm_WKNxvC45[qkLEhybS_T2bowdhA * 3 + 1] ^ UMGDuWZo_3G5D2eLB
            IgJQcUZr_ypB7QHlE[qkLEhybS_T2bowdhA * 3 + 2] = zPcoESgm_WKNxvC45[qkLEhybS_T2bowdhA * 3 + 2] ^ UMGDuWZo_3G5D2eLB
        xShvDgnR_gQ80Cq6X = bytes(IgJQcUZr_ypB7QHlE)
        OwESiEvl_PWYnbCDh = oMWEqqKH_gSUqyUjC['RvfmoVOp_AYA7YYWO']
        ScSskZvX_QB9ItoBc = oMWEqqKH_gSUqyUjC['BIUCfjDY_Hk4KkI9H']
        XOiLeUlP_f2jB9V1h = oMWEqqKH_gSUqyUjC['WmRovfTe_0SLyboOr']
        LXVjybFd_5OyRidt4 = oMWEqqKH_gSUqyUjC.get('KfxFFFMP_GGQfQWT1') or []
        iYmBRIjs_wUqg7nY9 = []
        wgoOfyHQ_aMAiMn5D = 0
        QrveWldm_RHdqXHOO = kwargs or {}
        sfbbNfjU_uFBRlvGw = [zmHexivw_23BpdMqt] * len(XOiLeUlP_f2jB9V1h)
        dVeTtXtE_bjA04I5f = len(XOiLeUlP_f2jB9V1h) - len(LXVjybFd_5OyRidt4)
        for i, rfwubofG_CsjD52F1 in enumerate(LXVjybFd_5OyRidt4):
            sfbbNfjU_uFBRlvGw[dVeTtXtE_bjA04I5f + i] = rfwubofG_CsjD52F1
        for i, rfwubofG_CsjD52F1 in enumerate(hiIukAub_wN0EpbRD):
            if i < len(XOiLeUlP_f2jB9V1h):
                sfbbNfjU_uFBRlvGw[i] = rfwubofG_CsjD52F1
        for k, rfwubofG_CsjD52F1 in QrveWldm_RHdqXHOO.items():
            if k in XOiLeUlP_f2jB9V1h:
                sfbbNfjU_uFBRlvGw[XOiLeUlP_f2jB9V1h.index(k)] = rfwubofG_CsjD52F1
        JuHJZBbX_X77YCh6z = dict(bdDtWMur_UO63ThIl or {})
        def NckQoCnh_o7J9vaHY(c):
            def QlMAZwaw_5t5vqc00(*FnkGYFqo_JhixUoRU, **TwwRqZCD_c4Feyoit):
                CSXJgUuW_Wwaao3fB = dict(JuHJZBbX_X77YCh6z)
                for cwpSoxSF_e2p4BSTX, FIOCvBFW_I1tkUw5n in enumerate(XOiLeUlP_f2jB9V1h):
                    if cwpSoxSF_e2p4BSTX < len(sfbbNfjU_uFBRlvGw) and sfbbNfjU_uFBRlvGw[cwpSoxSF_e2p4BSTX] is not zmHexivw_23BpdMqt:
                        CSXJgUuW_Wwaao3fB[FIOCvBFW_I1tkUw5n] = sfbbNfjU_uFBRlvGw[cwpSoxSF_e2p4BSTX]
                return xPLLbFep_zn6RmOZC(c, CSXJgUuW_Wwaao3fB, FnkGYFqo_JhixUoRU, TwwRqZCD_c4Feyoit)
            return QlMAZwaw_5t5vqc00
        HqrBFMLB_8hVNl2Lj = 0
        ExdAzaUl_IF7ZeXQm = max(len(xShvDgnR_gQ80Cq6X) * 10000, 10_000_000)
        while wgoOfyHQ_aMAiMn5D < len(xShvDgnR_gQ80Cq6X):
            HqrBFMLB_8hVNl2Lj += 1
            if HqrBFMLB_8hVNl2Lj > ExdAzaUl_IF7ZeXQm:
                raise RuntimeError("Execution timeout")
            TkqsxKwH_WLoJt2YG = xShvDgnR_gQ80Cq6X[wgoOfyHQ_aMAiMn5D]
            SgGvYuHO_iQCDG6ZD = xShvDgnR_gQ80Cq6X[wgoOfyHQ_aMAiMn5D + 1] | (xShvDgnR_gQ80Cq6X[wgoOfyHQ_aMAiMn5D + 2] << 8)
            wgoOfyHQ_aMAiMn5D += 3
            nhjCHEZV_tZ9sfhol = JValrCfK_b8WOekMV.get(TkqsxKwH_WLoJt2YG)
            if nhjCHEZV_tZ9sfhol == 'KglQBcja_GBvhmHsK':
                rfwubofG_CsjD52F1 = OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD]
                iYmBRIjs_wUqg7nY9.append(NckQoCnh_o7J9vaHY(rfwubofG_CsjD52F1) if isinstance(rfwubofG_CsjD52F1, dict) and rfwubofG_CsjD52F1.get('ceZkuLYa_X9fQvamv') else rfwubofG_CsjD52F1)
            elif nhjCHEZV_tZ9sfhol == 'KgcOQlIV_jQBatHmX':
                lqcOpQor_EbCJcuzx = ScSskZvX_QB9ItoBc[SgGvYuHO_iQCDG6ZD]
                if lqcOpQor_EbCJcuzx in JuHJZBbX_X77YCh6z:
                    rfwubofG_CsjD52F1 = JuHJZBbX_X77YCh6z[lqcOpQor_EbCJcuzx]
                else:
                    rfwubofG_CsjD52F1 = getattr(FvYchEBt_MS5bu16C, lqcOpQor_EbCJcuzx, None)
                iYmBRIjs_wUqg7nY9.append(rfwubofG_CsjD52F1)
            elif nhjCHEZV_tZ9sfhol == 'kqzgKgrT_X8mnt228':
                lqcOpQor_EbCJcuzx = ScSskZvX_QB9ItoBc[SgGvYuHO_iQCDG6ZD]
                JuHJZBbX_X77YCh6z[lqcOpQor_EbCJcuzx] = iYmBRIjs_wUqg7nY9.pop()
            elif nhjCHEZV_tZ9sfhol == 'DFdNkFpt_o7eCk0uo':
                rfwubofG_CsjD52F1 = sfbbNfjU_uFBRlvGw[SgGvYuHO_iQCDG6ZD]
                if rfwubofG_CsjD52F1 is zmHexivw_23BpdMqt:
                    FIOCvBFW_I1tkUw5n = XOiLeUlP_f2jB9V1h[SgGvYuHO_iQCDG6ZD] if SgGvYuHO_iQCDG6ZD < len(XOiLeUlP_f2jB9V1h) else None
                    if FIOCvBFW_I1tkUw5n and FIOCvBFW_I1tkUw5n in JuHJZBbX_X77YCh6z:
                        rfwubofG_CsjD52F1 = JuHJZBbX_X77YCh6z[FIOCvBFW_I1tkUw5n]
                    elif FIOCvBFW_I1tkUw5n:
                        # Fall back to builtins; if not found return None rather than
                        # raising UnboundLocalError — _prescan may classify SgGvYuHO_iQCDG6ZD name as
                        # local (assigned in some branch) that is legitimately used
                        # before assignment in another branch at the caller's risk.
                        rfwubofG_CsjD52F1 = getattr(FvYchEBt_MS5bu16C, FIOCvBFW_I1tkUw5n, None)
                    else:
                        rfwubofG_CsjD52F1 = None
                iYmBRIjs_wUqg7nY9.append(rfwubofG_CsjD52F1)
            elif nhjCHEZV_tZ9sfhol == 'XNRaMsQI_XzFDa3G9':
                sfbbNfjU_uFBRlvGw[SgGvYuHO_iQCDG6ZD] = iYmBRIjs_wUqg7nY9.pop()
            elif nhjCHEZV_tZ9sfhol == 'yGsxnBLY_6LP6hnRf':
                PsDGlDde_a04d9UqM = iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(getattr(PsDGlDde_a04d9UqM, OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD]))
            elif nhjCHEZV_tZ9sfhol == 'jtLEyzVa_N4Goy3D4':
                PsDGlDde_a04d9UqM = iYmBRIjs_wUqg7nY9.pop()
                BqsQgJKE_IgqRM2N6 = iYmBRIjs_wUqg7nY9.pop()
                setattr(PsDGlDde_a04d9UqM, OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD], BqsQgJKE_IgqRM2N6)
            elif nhjCHEZV_tZ9sfhol == 'JTRqeGUG_zrblmSmD':
                iYmBRIjs_wUqg7nY9.pop()
            elif nhjCHEZV_tZ9sfhol == 'pEeJWfBx_u8eU4g2T':
                iYmBRIjs_wUqg7nY9.append(iYmBRIjs_wUqg7nY9[-1])
            elif nhjCHEZV_tZ9sfhol == 'dEegxsfa_eOgCPSwY':
                iYmBRIjs_wUqg7nY9[-1], iYmBRIjs_wUqg7nY9[-2] = iYmBRIjs_wUqg7nY9[-2], iYmBRIjs_wUqg7nY9[-1]
            elif nhjCHEZV_tZ9sfhol == 'DUDrPDTf_9JX18zDv':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ + XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'TLoIrJgu_1e8AEiMV':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ - XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'NmAXgKYc_1djH3xT6':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ * XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'rnErAjTF_x11nGXAv':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ / XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'sRakWwVf_1jJqbkax':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ % XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'XVeJMkZJ_2IlqvQ47':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ ** XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'qilzIIde_SHJ57ruj':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ // XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'tUBFiPth_akTlIT3c':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ & XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'LwsqYtWo_qBMDaK2m':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ | XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'QbyBmeeU_lXPXYq7S':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ ^ XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'RUDbgZvz_60V0lO5u':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ << XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'frPpkueq_jAHhxGG8':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ >> XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol in ('ptCHFflv_SRu1cZ8m', 'KmyLlktT_Ak2dnz8P', 'osIAurKT_2n1Nj858'):
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ + XCGXDSjg_JDHGv2pk if nhjCHEZV_tZ9sfhol == 'ptCHFflv_SRu1cZ8m' else mXCYNXCc_2VWM6VIJ - XCGXDSjg_JDHGv2pk if nhjCHEZV_tZ9sfhol == 'KmyLlktT_Ak2dnz8P' else mXCYNXCc_2VWM6VIJ * XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'cVkhChhV_K82gqmkh':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ < XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'UnRffYjv_Up6OdbTM':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ <= XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'sdzxIlZD_fzaAf7sU':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ > XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'OKxGNpJf_9easnsIb':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ >= XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'epccAOqw_0bHNAlzf':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ == XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'pTXQTKzA_HtPwj8rW':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ != XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'JNSzXvNg_y1joR87w':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ in XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'XERQkdlv_4cIK9f6X':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ not in XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'kbOMNpXY_0VVp7gEM':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ is XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'HZRHZsEo_1U3hPXux':
                XCGXDSjg_JDHGv2pk = iYmBRIjs_wUqg7nY9.pop(); mXCYNXCc_2VWM6VIJ = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(mXCYNXCc_2VWM6VIJ is not XCGXDSjg_JDHGv2pk)
            elif nhjCHEZV_tZ9sfhol == 'IhEqRhpB_f7A8nJT8':
                iYmBRIjs_wUqg7nY9.append(-iYmBRIjs_wUqg7nY9.pop())
            elif nhjCHEZV_tZ9sfhol == 'aoWFbrxm_MvrkjAu2':
                iYmBRIjs_wUqg7nY9.append(not iYmBRIjs_wUqg7nY9.pop())
            elif nhjCHEZV_tZ9sfhol == 'IZaacUpZ_qUqnnXsn':
                iYmBRIjs_wUqg7nY9.append(~iYmBRIjs_wUqg7nY9.pop())
            elif nhjCHEZV_tZ9sfhol == 'GMalvTrk_4ZEtrRwc':
                wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'CeSWOiZy_ywQQrQGh':
                rfwubofG_CsjD52F1 = iYmBRIjs_wUqg7nY9.pop()
                if rfwubofG_CsjD52F1: wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'TvRLPSsA_JXWGUUEg':
                rfwubofG_CsjD52F1 = iYmBRIjs_wUqg7nY9.pop()
                if not rfwubofG_CsjD52F1: wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'fCnceJSt_gFIjkGzn':
                if iYmBRIjs_wUqg7nY9[-1]: wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'iJOUgwND_qpWFcnQd':
                if not iYmBRIjs_wUqg7nY9[-1]: wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'GXVyKeKj_Ir56YM8l':
                lfOaHauC_CXN9cafm = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]
                NlrLyhvb_0PwMwy2o = iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(NlrLyhvb_0PwMwy2o(*lfOaHauC_CXN9cafm))
            elif nhjCHEZV_tZ9sfhol == 'GDULRoEe_xQfSWDW6':
                TwwRqZCD_c4Feyoit = iYmBRIjs_wUqg7nY9.pop()
                lfOaHauC_CXN9cafm = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]
                NlrLyhvb_0PwMwy2o = iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(NlrLyhvb_0PwMwy2o(*lfOaHauC_CXN9cafm, **TwwRqZCD_c4Feyoit))
            elif nhjCHEZV_tZ9sfhol == 'ECBOVFrU_ZlJoDUAr':
                TwwRqZCD_c4Feyoit = iYmBRIjs_wUqg7nY9.pop()
                lfOaHauC_CXN9cafm = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]
                dlaeJqsY_rFqfbK2w = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(dlaeJqsY_rFqfbK2w(*lfOaHauC_CXN9cafm, **TwwRqZCD_c4Feyoit))
            elif nhjCHEZV_tZ9sfhol == 'qdAaAMUn_i2Gp7pP2':
                PsDGlDde_a04d9UqM = iYmBRIjs_wUqg7nY9.pop()
                dlaeJqsY_rFqfbK2w = getattr(PsDGlDde_a04d9UqM, OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD])
                iYmBRIjs_wUqg7nY9.append(PsDGlDde_a04d9UqM); iYmBRIjs_wUqg7nY9.append(dlaeJqsY_rFqfbK2w)
            elif nhjCHEZV_tZ9sfhol == 'zzbyXThi_lH0PBsZw':
                lfOaHauC_CXN9cafm = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]
                dlaeJqsY_rFqfbK2w = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(dlaeJqsY_rFqfbK2w(*lfOaHauC_CXN9cafm))
            elif nhjCHEZV_tZ9sfhol == 'DaLMtlEr_omC8pXvt':
                return iYmBRIjs_wUqg7nY9.pop() if iYmBRIjs_wUqg7nY9 else None
            elif nhjCHEZV_tZ9sfhol == 'hbhGZfZL_cpAk8BfB':
                return None
            elif nhjCHEZV_tZ9sfhol == 'xWKQPIYw_UMVpr7dA':
                iSAMgYMN_LkPTwMY3 = iYmBRIjs_wUqg7nY9.pop()
                iYmBRIjs_wUqg7nY9.append(NckQoCnh_o7J9vaHY(iSAMgYMN_LkPTwMY3) if isinstance(iSAMgYMN_LkPTwMY3, dict) and iSAMgYMN_LkPTwMY3.get('ceZkuLYa_X9fQvamv') else iSAMgYMN_LkPTwMY3)
            elif nhjCHEZV_tZ9sfhol == 'PWTmThik_4JK4XUOe':
                orevwnYA_f7fiRDcQ = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]; iYmBRIjs_wUqg7nY9.append(list(orevwnYA_f7fiRDcQ))
            elif nhjCHEZV_tZ9sfhol == 'oPwUfRbI_zQHz707G':
                orevwnYA_f7fiRDcQ = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]; iYmBRIjs_wUqg7nY9.append(tuple(orevwnYA_f7fiRDcQ))
            elif nhjCHEZV_tZ9sfhol == 'xYlWhdZv_TShAkmIc':
                LrtDiZBa_9JGtMeq3 = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD * 2)][::-1]
                iYmBRIjs_wUqg7nY9.append({LrtDiZBa_9JGtMeq3[i]: LrtDiZBa_9JGtMeq3[i + 1] for i in range(0, len(LrtDiZBa_9JGtMeq3), 2)})
            elif nhjCHEZV_tZ9sfhol == 'NzZxvNpJ_7xJ7weBJ':
                orevwnYA_f7fiRDcQ = [iYmBRIjs_wUqg7nY9.pop() for _ in range(SgGvYuHO_iQCDG6ZD)][::-1]; iYmBRIjs_wUqg7nY9.append(set(orevwnYA_f7fiRDcQ))
            elif nhjCHEZV_tZ9sfhol == 'skEjFLVh_qDEcI5b8':
                muyrNwpI_2q7OYP7x = iYmBRIjs_wUqg7nY9.pop(); PsDGlDde_a04d9UqM = iYmBRIjs_wUqg7nY9.pop(); iYmBRIjs_wUqg7nY9.append(PsDGlDde_a04d9UqM[muyrNwpI_2q7OYP7x])
            elif nhjCHEZV_tZ9sfhol == 'HHAvuEcW_7yp87wLc':
                muyrNwpI_2q7OYP7x = iYmBRIjs_wUqg7nY9.pop(); PsDGlDde_a04d9UqM = iYmBRIjs_wUqg7nY9.pop(); BqsQgJKE_IgqRM2N6 = iYmBRIjs_wUqg7nY9.pop()
                PsDGlDde_a04d9UqM[muyrNwpI_2q7OYP7x] = BqsQgJKE_IgqRM2N6
            elif nhjCHEZV_tZ9sfhol == 'GAYCwWSR_m258V0M5':
                iYmBRIjs_wUqg7nY9.append(iter(iYmBRIjs_wUqg7nY9.pop()))
            elif nhjCHEZV_tZ9sfhol == 'pwOcEuhG_ADKagmTl':
                JTTTtVxf_dMsyubhM = iYmBRIjs_wUqg7nY9[-1]
                try:
                    iYmBRIjs_wUqg7nY9.append(next(JTTTtVxf_dMsyubhM))
                except StopIteration:
                    iYmBRIjs_wUqg7nY9.pop(); wgoOfyHQ_aMAiMn5D = SgGvYuHO_iQCDG6ZD * 3
            elif nhjCHEZV_tZ9sfhol == 'pktawieD_c4Z6ox58':
                import importlib as SqidhsCu_cjmpMcTw
                dbLpAYog_yV45Vn7v = OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD]
                RFvnNDqk_TuMIsPNn = SqidhsCu_cjmpMcTw.import_module(dbLpAYog_yV45Vn7v)
                iYmBRIjs_wUqg7nY9.append(RFvnNDqk_TuMIsPNn)
            elif nhjCHEZV_tZ9sfhol == 'kkgePgML_m3wSqjc6':
                import importlib as SqidhsCu_cjmpMcTw
                mod = iYmBRIjs_wUqg7nY9[-1]
                BdnNzmHg_DVq3HuZV = OwESiEvl_PWYnbCDh[SgGvYuHO_iQCDG6ZD]
                try:
                    XWzFWDAU_fmNWAZKX = SqidhsCu_cjmpMcTw.import_module(mod.__name__ + '.' + BdnNzmHg_DVq3HuZV)
                    iYmBRIjs_wUqg7nY9.append(XWzFWDAU_fmNWAZKX)
                except (ImportError, AttributeError):
                    iYmBRIjs_wUqg7nY9.append(getattr(mod, BdnNzmHg_DVq3HuZV))
            elif nhjCHEZV_tZ9sfhol == 'SJsTZJkg_y3pvlBWI':
                ZFJVJfKM_jw7Fn9kd = list(iYmBRIjs_wUqg7nY9.pop())
                for rfwubofG_CsjD52F1 in reversed(ZFJVJfKM_jw7Fn9kd[:SgGvYuHO_iQCDG6ZD]): iYmBRIjs_wUqg7nY9.append(rfwubofG_CsjD52F1)
            elif nhjCHEZV_tZ9sfhol == 'BYUDrmzw_4gFfcHgP':
                ssfPUImo_XYCB0H9p = iYmBRIjs_wUqg7nY9.pop()
                if ssfPUImo_XYCB0H9p is not None: raise ssfPUImo_XYCB0H9p
            elif nhjCHEZV_tZ9sfhol == 'DUrdgZeb_uR3kAdyR':
                pass
        return None
    return xPLLbFep_zn6RmOZC
def ipzwHeCd_pbzpGaXZ(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['lPQkxdjG_1kIYxf8R']))
  for c in v['RvfmoVOp_AYA7YYWO']:
   if isinstance(c,dict) and c.get('ceZkuLYa_X9fQvamv'):w(c)
 w(v);return acc&0xFFFFFFFF
pTuDLAeT_u9Aflx0V=316876510
obfWmEMB_GaHvlpOp={79:'DUrdgZeb_uR3kAdyR',239:'KglQBcja_GBvhmHsK',87:'KgcOQlIV_jQBatHmX',95:'kqzgKgrT_X8mnt228',86:'DFdNkFpt_o7eCk0uo',141:'XNRaMsQI_XzFDa3G9',64:'yGsxnBLY_6LP6hnRf',190:'jtLEyzVa_N4Goy3D4',202:'JTRqeGUG_zrblmSmD',51:'pEeJWfBx_u8eU4g2T',67:'dEegxsfa_eOgCPSwY',112:'DUDrPDTf_9JX18zDv',83:'TLoIrJgu_1e8AEiMV',50:'NmAXgKYc_1djH3xT6',135:'rnErAjTF_x11nGXAv',168:'sRakWwVf_1jJqbkax',122:'XVeJMkZJ_2IlqvQ47',12:'qilzIIde_SHJ57ruj',132:'tUBFiPth_akTlIT3c',47:'LwsqYtWo_qBMDaK2m',133:'QbyBmeeU_lXPXYq7S',130:'RUDbgZvz_60V0lO5u',226:'frPpkueq_jAHhxGG8',77:'ptCHFflv_SRu1cZ8m',165:'KmyLlktT_Ak2dnz8P',20:'osIAurKT_2n1Nj858',71:'cVkhChhV_K82gqmkh',105:'UnRffYjv_Up6OdbTM',37:'sdzxIlZD_fzaAf7sU',180:'OKxGNpJf_9easnsIb',167:'epccAOqw_0bHNAlzf',134:'pTXQTKzA_HtPwj8rW',34:'JNSzXvNg_y1joR87w',144:'XERQkdlv_4cIK9f6X',175:'kbOMNpXY_0VVp7gEM',27:'HZRHZsEo_1U3hPXux',163:'IhEqRhpB_f7A8nJT8',85:'aoWFbrxm_MvrkjAu2',242:'IZaacUpZ_qUqnnXsn',104:'GMalvTrk_4ZEtrRwc',222:'CeSWOiZy_ywQQrQGh',103:'TvRLPSsA_JXWGUUEg',61:'fCnceJSt_gFIjkGzn',28:'iJOUgwND_qpWFcnQd',159:'GXVyKeKj_Ir56YM8l',146:'DaLMtlEr_omC8pXvt',174:'hbhGZfZL_cpAk8BfB',187:'GDULRoEe_xQfSWDW6',26:'ECBOVFrU_ZlJoDUAr',160:'PWTmThik_4JK4XUOe',228:'oPwUfRbI_zQHz707G',164:'xYlWhdZv_TShAkmIc',246:'NzZxvNpJ_7xJ7weBJ',19:'skEjFLVh_qDEcI5b8',2:'HHAvuEcW_7yp87wLc',210:'qdAaAMUn_i2Gp7pP2',66:'zzbyXThi_lH0PBsZw',205:'GAYCwWSR_m258V0M5',110:'pwOcEuhG_ADKagmTl',49:'pktawieD_c4Z6ox58',148:'kkgePgML_m3wSqjc6',41:'xWKQPIYw_UMVpr7dA',127:'QDrMLZQC_fn8Yw5au',207:'SJsTZJkg_y3pvlBWI',173:'BYUDrmzw_4gFfcHgP'}
iJSISzVo_DjPcgwHL={'ceZkuLYa_X9fQvamv':1,'lPQkxdjG_1kIYxf8R':[74,29,29,124,147,147,230,8,9,250,127,127,106,244,245,161,107,107,79,225,225],'RvfmoVOp_AYA7YYWO':[8602398,8602469],'BIUCfjDY_Hk4KkI9H':['print'],'WmRovfTe_0SLyboOr':[],'KfxFFFMP_GGQfQWT1':[]}
if ipzwHeCd_pbzpGaXZ(iJSISzVo_DjPcgwHL)!=pTuDLAeT_u9Aflx0V:__import__("sys").exit()
uLSnkyTC_sB26eoQ2=mDInjSlg_c6C4ht86(obfWmEMB_GaHvlpOp,NfNdxQid_KNTGlTj0=118,tQtexiGU_bNgSy3nk=29)
uLSnkyTC_sB26eoQ2(iJSISzVo_DjPcgwHL,{'__name__':'__main__','Obfuscator NTT - https://discord.gg/YAdrT39SWq':fWlYWYFX_Gkxd5ULM})
